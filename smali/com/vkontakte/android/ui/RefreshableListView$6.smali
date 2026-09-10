.class Lcom/vkontakte/android/ui/RefreshableListView$6;
.super Ljava/lang/Object;
.source "RefreshableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/RefreshableListView;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/RefreshableListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/RefreshableListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/RefreshableListView$6;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f06011e

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 696
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$6;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->access$3(Lcom/vkontakte/android/ui/RefreshableListView;)Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$6;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView$6;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->access$3(Lcom/vkontakte/android/ui/RefreshableListView;)Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->getLastUpdatedTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->access$4(Lcom/vkontakte/android/ui/RefreshableListView;Ljava/lang/String;)V

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$6;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->access$5(Lcom/vkontakte/android/ui/RefreshableListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView$6;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->access$6(Lcom/vkontakte/android/ui/RefreshableListView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$6;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->access$5(Lcom/vkontakte/android/ui/RefreshableListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 699
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$6;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->access$5(Lcom/vkontakte/android/ui/RefreshableListView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f06011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 700
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$6;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->access$7(Lcom/vkontakte/android/ui/RefreshableListView;I)V

    .line 701
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$6;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->access$5(Lcom/vkontakte/android/ui/RefreshableListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$6;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->access$3(Lcom/vkontakte/android/ui/RefreshableListView;)Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$6;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->access$3(Lcom/vkontakte/android/ui/RefreshableListView;)Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onRefresh()V

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$6;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->access$8(Lcom/vkontakte/android/ui/RefreshableListView;F)V

    .line 704
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$6;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 705
    return-void
.end method
