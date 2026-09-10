.class Lcom/vkontakte/android/WallView$21;
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
    iput-object p1, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    iput-boolean p2, p0, Lcom/vkontakte/android/WallView$21;->val$refresh:Z

    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/WallView$21;)Lcom/vkontakte/android/WallView;
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 6
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f06010b

    const/16 v1, 0x12

    const/16 v2, 0xf

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1090
    iget-object v0, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    iput-boolean v3, v0, Lcom/vkontakte/android/WallView;->dataLoading:Z

    .line 1091
    iget-boolean v0, p0, Lcom/vkontakte/android/WallView$21;->val$refresh:Z

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    iget-object v0, v0, Lcom/vkontakte/android/WallView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 1094
    :cond_0
    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_5

    .line 1095
    :cond_1
    if-ne p1, v1, :cond_2

    .line 1096
    iget-object v0, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    const v1, 0x7f09012b

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/WallView;->setEmptyLabel(I)V

    .line 1097
    :cond_2
    if-ne p1, v2, :cond_3

    .line 1098
    iget-object v0, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/WallView;->setEmptyLabel(I)V

    .line 1099
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    iget-object v0, v0, Lcom/vkontakte/android/WallView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setVisibility(I)V

    .line 1100
    iget-object v0, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    new-array v1, v3, [Lcom/vkontakte/android/NewsEntry;

    iget-boolean v2, p0, Lcom/vkontakte/android/WallView$21;->val$refresh:Z

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/WallView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    .line 1101
    iget-object v0, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    iget-object v0, v0, Lcom/vkontakte/android/WallView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 1102
    iget-object v0, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$3(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    iget-object v0, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$1(Lcom/vkontakte/android/WallView;)I

    move-result v0

    if-lez v0, :cond_4

    .line 1104
    iget-object v0, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$19(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1105
    iget-object v0, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$20(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1108
    iget-object v0, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0, v3, v3, v3}, Lcom/vkontakte/android/WallView;->access$24(Lcom/vkontakte/android/WallView;ZZZ)V

    .line 1113
    :cond_4
    :goto_0
    return-void

    .line 1111
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090058

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

    .line 1027
    iget-boolean v0, p0, Lcom/vkontakte/android/WallView$21;->val$refresh:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    iget v0, v0, Lcom/vkontakte/android/WallView;->lastUpdateTime:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$1(Lcom/vkontakte/android/WallView;)I

    move-result v0

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_1

    .line 1028
    iget-object v0, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vkontakte/android/cache/UserWallCache;->replace([Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 1029
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    new-instance v1, Lcom/vkontakte/android/WallView$21$1;

    iget-boolean v2, p0, Lcom/vkontakte/android/WallView$21;->val$refresh:Z

    invoke-direct {v1, p0, p3, p1, v2}, Lcom/vkontakte/android/WallView$21$1;-><init>(Lcom/vkontakte/android/WallView$21;Ljava/lang/Object;[Lcom/vkontakte/android/NewsEntry;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/WallView;->post(Ljava/lang/Runnable;)Z

    .line 1082
    iget-object v0, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$3(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1083
    iget-object v0, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$23(Lcom/vkontakte/android/WallView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1084
    iget-object v0, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$3(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060117

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1085
    iget-object v0, p0, Lcom/vkontakte/android/WallView$21;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$3(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1087
    :cond_2
    return-void
.end method
