.class Lcom/vkontakte/android/fragments/ChatFragment$28$2;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment$28;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

.field private final synthetic val$code:I

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$28;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    iput p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$2;->val$code:I

    iput-object p3, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$2;->val$msg:Ljava/lang/String;

    .line 1573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x12c

    .line 1575
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$61(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$2;->val$code:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 1576
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearAnimation()V

    .line 1577
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$30(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1578
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$61(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 1579
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$29(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 1580
    return-void
.end method
