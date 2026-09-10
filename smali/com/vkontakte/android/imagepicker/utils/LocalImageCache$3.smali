.class Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$3;
.super Ljava/lang/Object;
.source "LocalImageCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->clearStyledThumbsCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$3;->this$0:Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 138
    :try_start_0
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$3;->this$0:Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    invoke-static {v4}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->access$0(Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 140
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 148
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$3;->this$0:Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    invoke-static {v4}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->access$0(Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 154
    .end local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 140
    .restart local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$3;->this$0:Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    invoke-static {v5}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->access$0(Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 144
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 145
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 152
    .local v3, "th":Ljava/lang/Throwable;
    const-string v4, "Cannot clear thumbs cache"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method
