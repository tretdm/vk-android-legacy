.class Lcom/vkontakte/android/fragments/ChatFragment$24$2;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment$24;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

.field private final synthetic val$code:I

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$24;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    iput p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$2;->val$code:I

    iput-object p3, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$2;->val$msg:Ljava/lang/String;

    .line 1148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x12c

    .line 1150
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$43(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$2;->val$code:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 1151
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearAnimation()V

    .line 1152
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$19(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1153
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$43(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 1154
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$18(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 1155
    return-void
.end method
