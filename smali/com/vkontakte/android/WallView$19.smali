.class Lcom/vkontakte/android/WallView$19;
.super Ljava/lang/Object;
.source "WallView.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallView;->loadData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WallView;

.field private final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WallView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    iput-boolean p2, p0, Lcom/vkontakte/android/WallView$19;->val$refresh:Z

    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 6
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f06003e

    const/16 v1, 0x12

    const/16 v2, 0xf

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 987
    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    iput-boolean v3, v0, Lcom/vkontakte/android/WallView;->dataLoading:Z

    .line 988
    iget-boolean v0, p0, Lcom/vkontakte/android/WallView$19;->val$refresh:Z

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    iget-object v0, v0, Lcom/vkontakte/android/WallView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 991
    :cond_0
    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_5

    .line 992
    :cond_1
    if-ne p1, v1, :cond_2

    .line 993
    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    const v1, 0x7f09012a

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/WallView;->setEmptyLabel(I)V

    .line 994
    :cond_2
    if-ne p1, v2, :cond_3

    .line 995
    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    const v1, 0x7f09012b

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/WallView;->setEmptyLabel(I)V

    .line 996
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    iget-object v0, v0, Lcom/vkontakte/android/WallView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setVisibility(I)V

    .line 997
    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    new-array v1, v3, [Lcom/vkontakte/android/NewsEntry;

    iget-boolean v2, p0, Lcom/vkontakte/android/WallView$19;->val$refresh:Z

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/WallView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    .line 998
    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    iget-object v0, v0, Lcom/vkontakte/android/WallView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 999
    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$2(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1000
    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v0

    if-lez v0, :cond_4

    .line 1001
    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$19(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1002
    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$20(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1003
    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$19(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1004
    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$20(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1009
    :cond_4
    :goto_0
    return-void

    .line 1007
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090057

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public success([Lcom/vkontakte/android/NewsEntry;ILjava/lang/Object;)V
    .locals 4
    .param p1, "news"    # [Lcom/vkontakte/android/NewsEntry;
    .param p2, "total"    # I
    .param p3, "status"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 924
    iget-boolean v0, p0, Lcom/vkontakte/android/WallView$19;->val$refresh:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    iget v0, v0, Lcom/vkontakte/android/WallView;->lastUpdateTime:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v0

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_1

    .line 925
    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vkontakte/android/cache/UserWallCache;->replace([Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 926
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    new-instance v1, Lcom/vkontakte/android/WallView$19$1;

    iget-boolean v2, p0, Lcom/vkontakte/android/WallView$19;->val$refresh:Z

    invoke-direct {v1, p0, p3, p1, v2}, Lcom/vkontakte/android/WallView$19$1;-><init>(Lcom/vkontakte/android/WallView$19;Ljava/lang/Object;[Lcom/vkontakte/android/NewsEntry;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/WallView;->post(Ljava/lang/Runnable;)Z

    .line 979
    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$2(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060117

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 980
    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$23(Lcom/vkontakte/android/WallView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 981
    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$2(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 982
    iget-object v0, p0, Lcom/vkontakte/android/WallView$19;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$2(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060115

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 984
    :cond_2
    return-void
.end method
