.class Lcom/vkontakte/android/mediapicker/utils/StrictCache$1;
.super Ljava/lang/Object;
.source "StrictCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/StrictCache;->cache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/StrictCache;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$1;->this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$1;->val$value:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$1;->val$value:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$1;->this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->access$000(Lcom/vkontakte/android/mediapicker/utils/StrictCache;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$1;->this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$1;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->getRawKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$1;->val$value:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$1;->this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->access$000(Lcom/vkontakte/android/mediapicker/utils/StrictCache;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$1;->this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$1;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->getRawKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
