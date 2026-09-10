.class Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$1;
.super Ljava/lang/Object;
.source "LocalImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->setThumbTasksLimit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

.field private final synthetic val$limit:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$1;->this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    iput p2, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$1;->val$limit:I

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$1;->this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    iget v1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$1;->val$limit:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->access$0(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;I)V

    .line 95
    return-void
.end method
