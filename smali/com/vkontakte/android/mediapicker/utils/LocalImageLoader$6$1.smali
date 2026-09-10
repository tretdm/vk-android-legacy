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

.field private final synthetic val$bitmap:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

.field private final synthetic val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

.field private final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;ZLcom/vkontakte/android/mediapicker/entries/ActionCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6$1;->this$1:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6$1;->val$bitmap:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    iput-boolean p3, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6$1;->val$sync:Z

    iput-object p4, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6$1;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    .line 448
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
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6$1;->val$sync:Z

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6$1;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6$1;->val$bitmap:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 458
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6$1;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6$1;->val$bitmap:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6$1;->run(Landroid/graphics/Bitmap;)V

    return-void
.end method
