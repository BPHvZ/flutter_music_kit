package app.misi.music_kit.infrastructure

import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

class CatalogSongsRepository {
    suspend fun searchSongByISRC(
        developerToken: String,
        musicUserToken: String,
        storefront: String,
        isrc: String
    ): Result<CatalogSongResponseItem?> {
        return withContext(Dispatchers.IO) {
            try {
                val result = MusicApi.create().searchSongByISRC(developerToken, musicUserToken, storefront, isrc)
                Result.success(result)
            } catch (exception: Exception) {
                Result.failure(exception)
            }
        }
    }
}
