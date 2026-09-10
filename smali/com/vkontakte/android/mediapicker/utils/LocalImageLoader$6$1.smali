.class Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6$1;
.super Lcom/vkontakte/android/mediapicker/entries/ActionCallback;
.source "LocalImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;

.field final synthetic val$bitmap:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6$1;->this$1:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6$1;->val$bitmap:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6$1;->val$bitmap:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->set(Ljava/lang/Object;)V

    .line 454
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6$1;->this$1:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;

    iget-boolean v0, v0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$sync:Z

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6$1;->this$1:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6$1;->val$bitmap:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 458
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6$1;->this$1:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6$1;->val$bitmap:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 449
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6$1;->run(Landroid/graphics/Bitmap;)V

    return-void
.end method
