.class Lcom/vkontakte/android/mediapicker/utils/StrictCache$2;
.super Ljava/lang/Object;
.source "StrictCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/StrictCache;->get(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$lock:Ljava/util/concurrent/Semaphore;

.field final synthetic val$result:[Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/StrictCache;[Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$2;->this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$2;->val$result:[Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$2;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$2;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$2;->val$result:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$2;->this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$2;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->get(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v3

    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$2;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 82
    return-void
.end method
