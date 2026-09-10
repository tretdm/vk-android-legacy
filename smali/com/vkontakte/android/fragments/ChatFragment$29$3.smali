.class Lcom/vkontakte/android/fragments/ChatFragment$29$3;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment$29;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$29;)V
    .locals 0

    .prologue
    .line 1616
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$3;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1618
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$3;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00ce

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1619
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$3;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1620
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$3;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1621
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$3;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5800(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1622
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$3;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5800(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1623
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$3;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5800(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1624
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$3;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5800(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1626
    :cond_0
    return-void
.end method
