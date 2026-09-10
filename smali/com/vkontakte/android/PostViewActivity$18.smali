.class Lcom/vkontakte/android/PostViewActivity$18;
.super Landroid/os/ResultReceiver;
.source "PostViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity;->deactivateCommentBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PostViewActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$18;->this$0:Lcom/vkontakte/android/PostViewActivity;

    .line 540
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    .line 543
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$18;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$26(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$18;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$12(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$18;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$27(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/TitleBarButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/TitleBarButton;->setVisibility(I)V

    .line 546
    return-void
.end method
