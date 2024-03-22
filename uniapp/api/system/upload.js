import upload from '@/utils/upload'
// 用户头像上传
export function uploadFile(data) {
  return upload({
    url: '/common/upload',
    name: data.name,
    filePath: data.filePath
  })
}