import Foundation
import Alamofire

class StickerAPI : BaseAPI {
    static let shared = StickerAPI()
    private enum url {
        static let albums = "stickers/albums"
        static func albums(id: String) -> String {
            return "stickers/albums/\(id)"
        }
    }

    func albums()  -> APIResult<[StickerAlbum]> {
        return request(method: .get, url: url.albums)
    }

    func stickers(albumId: String)  -> APIResult<[Sticker]> {
        return request(method: .get, url: url.albums(id: albumId))
    }
}
