.class Lcom/vkontakte/android/ui/PhotoFeedView$2;
.super Ljava/lang/Object;
.source "PhotoFeedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PhotoFeedView;->updateEverything()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/PhotoFeedView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$2;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$2;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$2;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$4(Lcom/vkontakte/android/ui/PhotoFeedView;I)V

    .line 221
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$2;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$5(Lcom/vkontakte/android/ui/PhotoFeedView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 222
    return-void
.end method
