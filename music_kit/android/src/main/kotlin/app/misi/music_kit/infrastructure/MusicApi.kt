package app.misi.music_kit.infrastructure

import app.misi.music_kit.util.httpClient

interface MusicApi {
  suspend fun getStorefrontId(
    developerToken: String,
    musicUserToken: String
  ): String?

  suspend fun searchSongByISRC(
    developerToken: String,
    musicUserToken: String,
    storefront: String,
    isrc: String
  ): CatalogSongResponseItem?

  companion object {
    fun create(): MusicApiImpl {
      return MusicApiImpl(
        httpClient
      )
    }
  }
}

//sealed class Result {
//  class SuccessWithData<T>(val data: T): Result()
//  class Error(val exception: Exception): Result()
//}
