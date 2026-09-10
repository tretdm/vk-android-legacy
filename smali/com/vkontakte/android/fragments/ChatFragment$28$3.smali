.class Lcom/vkontakte/android/fragments/ChatFragment$28$3;
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


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$28;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$3;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    .line 1584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1586
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$3;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f08006b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1587
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$3;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$45(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1588
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$3;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$45(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1589
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$3;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$64(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1590
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$3;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$64(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1591
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$3;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$64(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1592
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$3;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$64(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1594
    :cond_0
    return-void
.end method
