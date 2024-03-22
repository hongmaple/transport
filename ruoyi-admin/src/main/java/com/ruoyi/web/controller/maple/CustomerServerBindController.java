package com.ruoyi.web.controller.maple;

import java.util.*;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.utils.ip.IpUtils;
import com.ruoyi.maple.domain.CustomerServer;
import com.ruoyi.maple.service.ICustomerServerService;
import org.apache.commons.collections4.CollectionUtils;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.maple.domain.CustomerServerBind;
import com.ruoyi.maple.service.ICustomerServerBindService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 客服微信IP绑定Controller
 *
 * @author maple
 * @date 2024-01-09
 */
@RestController
@RequestMapping("/maple/custmoerServerBind")
public class CustomerServerBindController extends BaseController {
    @Autowired
    private ICustomerServerBindService customerServerBindService;

    @Autowired
    private ICustomerServerService customerServerService;

    /**
     * 查询客服微信IP绑定列表
     */
    @PreAuthorize("@ss.hasPermi('maple:custmoerServerBind:list')")
    @GetMapping("/list")
    public TableDataInfo list(CustomerServerBind customerServerBind) {
        startPage();
        List<CustomerServerBind> list = customerServerBindService.selectCustomerServerBindList(customerServerBind);
        return getDataTable(list);
    }

    /**
     * 导出客服微信IP绑定列表
     */
    @PreAuthorize("@ss.hasPermi('maple:custmoerServerBind:export')")
    @Log(title = "客服微信IP绑定", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, CustomerServerBind customerServerBind) {
        List<CustomerServerBind> list = customerServerBindService.selectCustomerServerBindList(customerServerBind);
        ExcelUtil<CustomerServerBind> util = new ExcelUtil<CustomerServerBind>(CustomerServerBind.class);
        util.exportExcel(response, list, "客服微信IP绑定数据");
    }

    /**
     * 获取客服微信IP绑定详细信息
     */
    @PreAuthorize("@ss.hasPermi('maple:custmoerServerBind:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {
        return success(customerServerBindService.selectCustomerServerBindById(id));
    }

    /**
     * 新增客服微信IP绑定
     */
    @PreAuthorize("@ss.hasPermi('maple:custmoerServerBind:add')")
    @Log(title = "客服微信IP绑定", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CustomerServerBind customerServerBind) {
        return toAjax(customerServerBindService.insertCustomerServerBind(customerServerBind));
    }

    /**
     * 修改客服微信IP绑定
     */
    @PreAuthorize("@ss.hasPermi('maple:custmoerServerBind:edit')")
    @Log(title = "客服微信IP绑定", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CustomerServerBind customerServerBind) {
        return toAjax(customerServerBindService.updateCustomerServerBind(customerServerBind));
    }

    /**
     * 删除客服微信IP绑定
     */
    @PreAuthorize("@ss.hasPermi('maple:custmoerServerBind:remove')")
    @Log(title = "客服微信IP绑定", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(customerServerBindService.deleteCustomerServerBindByIds(ids));
    }

    /**
     * 随机查询并绑定客服微信，ip绑定
     */
    @PostMapping("/bind")
    public AjaxResult bind() {
        String ipAddr = IpUtils.getIpAddr();
        CustomerServerBind customerServerBind = new CustomerServerBind();
        customerServerBind.setIP(ipAddr);
        List<CustomerServerBind> customerServerBinds = customerServerBindService
                .selectCustomerServerBindList(customerServerBind);
        if (CollectionUtils.isNotEmpty(customerServerBinds)) {
            return AjaxResult.success(customerServerService
                    .selectCustomerServerById(customerServerBinds.get(0).getCustomerServerId()));
        }
        CustomerServer customerServer = new CustomerServer();
        customerServer.setStatus("0");
        List<CustomerServer> customerServers = customerServerService.selectCustomerServerList(customerServer);
        customerServers.forEach(c -> {
            c.setBindCount(c.getBindCount() == 0 ? 1 : c.getBindCount());
        });
        List<CustomerServer> desList = customerServers.stream()
                .sorted((c1, c2) -> c2.getBindCount() - c1.getBindCount())
                .collect(Collectors.toList());
        //候选人id 越前面的绑定的客户越多，就要给他越小的权重
        customerServers.sort(Comparator
                .comparing(CustomerServer::getBindCount));
        List<Long> candidates = customerServers.stream().map(CustomerServer::getId).collect(Collectors.toList());
        //权重降序
        List<Integer> weights = desList.stream().map(CustomerServer::getBindCount).collect(Collectors.toList());
        List<Integer> candidatesIndex = new ArrayList<>();
        for (int i = 0; i < candidates.size(); i++) {
            candidatesIndex.add(i);
        }
        //获取加权随机下标
        int random = 0;
        do {
            random = getRandom(candidatesIndex, weights);
        } while (random == -1);
        int finalRandom = random;
        customerServerBind.setCustomerServerId(candidates.get(finalRandom));
        customerServerBindService.insertCustomerServerBind(customerServerBind);
        return AjaxResult.success(desList.stream()
                .filter(c -> c.getId().equals(candidates.get(finalRandom)))
                .findFirst().get());
    }

    /**
     * 获取加权随机内容
     *
     * @param candidates
     * @param weights
     * @return
     */
    public int getRandom(List<Integer> candidates, List<Integer> weights) {
        Random random = new Random();
        int totalWeight = 0;
        for (Integer weight : weights) {
            totalWeight += weight;
        }
        int randomPoint = random.nextInt(totalWeight);
        int weightSum = 0;
        for (int i = 0; i < weights.size(); i++) {
            weightSum += weights.get(i);
            if (randomPoint < weightSum) {
                return candidates.get(i);
            }
        }
        return -1; // should not reach here, but just in case...
    }

}
