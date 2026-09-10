.class Lcom/vkontakte/android/mediapicker/utils/StrictCache$5;
.super Ljava/lang/Object;
.source "StrictCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/StrictCache;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/StrictCache;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$5;->this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 156
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$5;->this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    invoke-static {v4}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->access$000(Lcom/vkontakte/android/mediapicker/utils/StrictCache;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 158
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 160
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$5;->this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    invoke-static {v4}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->access$000(Lcom/vkontakte/android/mediapicker/utils/StrictCache;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 162
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 163
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 166
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$5;->this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    invoke-static {v4}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->access$000(Lcom/vkontakte/android/mediapicker/utils/StrictCache;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 167
    return-void
.end method
