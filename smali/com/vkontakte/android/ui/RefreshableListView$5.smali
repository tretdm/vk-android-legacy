.class Lcom/vkontakte/android/ui/RefreshableListView$5;
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
    iput-object p1, p0, Lcom/vkontakte/android/ui/RefreshableListView$5;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 673
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$5;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->access$3(Lcom/vkontakte/android/ui/RefreshableListView;)Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$5;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView$5;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->access$3(Lcom/vkontakte/android/ui/RefreshableListView;)Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->getLastUpdatedTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->access$4(Lcom/vkontakte/android/ui/RefreshableListView;Ljava/lang/String;)V

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$5;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->access$5(Lcom/vkontakte/android/ui/RefreshableListView;I)V

    .line 676
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$5;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->access$6(Lcom/vkontakte/android/ui/RefreshableListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$5;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->access$3(Lcom/vkontakte/android/ui/RefreshableListView;)Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$5;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->access$3(Lcom/vkontakte/android/ui/RefreshableListView;)Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onRefresh()V

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$5;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->access$7(Lcom/vkontakte/android/ui/RefreshableListView;F)V

    .line 679
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$5;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 680
    return-void
.end method
