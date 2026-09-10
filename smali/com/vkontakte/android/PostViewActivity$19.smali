.class Lcom/vkontakte/android/PostViewActivity$19;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$19;->this$0:Lcom/vkontakte/android/PostViewActivity;

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 549
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$19;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$26(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 550
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$19;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$26(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$19;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$12(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$19;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$27(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/TitleBarButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/TitleBarButton;->setVisibility(I)V

    .line 554
    :cond_0
    return-void
.end method
