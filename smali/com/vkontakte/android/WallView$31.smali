.class Lcom/vkontakte/android/WallView$31;
.super Ljava/lang/Object;
.source "WallView.java"

# interfaces
.implements Lcom/vkontakte/android/api/GroupsJoin$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallView;->doJoinGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WallView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WallView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WallView$31;->this$0:Lcom/vkontakte/android/WallView;

    .line 1338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1367
    return-void
.end method

.method public success()V
    .locals 7

    .prologue
    const v6, 0x7f09017e

    const v5, 0x7f06010b

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1341
    iget-object v1, p0, Lcom/vkontakte/android/WallView$31;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1}, Lcom/vkontakte/android/WallView;->access$16(Lcom/vkontakte/android/WallView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1342
    iget-object v1, p0, Lcom/vkontakte/android/WallView$31;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v1}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09016c

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1343
    iget-object v1, p0, Lcom/vkontakte/android/WallView$31;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1}, Lcom/vkontakte/android/WallView;->access$19(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1344
    iget-object v1, p0, Lcom/vkontakte/android/WallView$31;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1}, Lcom/vkontakte/android/WallView;->access$20(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1345
    iget-object v1, p0, Lcom/vkontakte/android/WallView$31;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1, v4}, Lcom/vkontakte/android/WallView;->access$31(Lcom/vkontakte/android/WallView;Z)V

    .line 1361
    :goto_0
    return-void

    .line 1349
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/WallView$31;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1, v3, v3, v3}, Lcom/vkontakte/android/WallView;->access$24(Lcom/vkontakte/android/WallView;ZZZ)V

    .line 1350
    iget-object v1, p0, Lcom/vkontakte/android/WallView$31;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1}, Lcom/vkontakte/android/WallView;->access$30(Lcom/vkontakte/android/WallView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1351
    new-instance v0, Lcom/vkontakte/android/api/Group;

    invoke-direct {v0}, Lcom/vkontakte/android/api/Group;-><init>()V

    .line 1352
    .local v0, "group":Lcom/vkontakte/android/api/Group;
    iget-object v1, p0, Lcom/vkontakte/android/WallView$31;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1}, Lcom/vkontakte/android/WallView;->access$1(Lcom/vkontakte/android/WallView;)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lcom/vkontakte/android/api/Group;->id:I

    .line 1353
    iget-object v1, p0, Lcom/vkontakte/android/WallView$31;->this$0:Lcom/vkontakte/android/WallView;

    iget-boolean v1, v1, Lcom/vkontakte/android/WallView;->isAdmin:Z

    iput-boolean v1, v0, Lcom/vkontakte/android/api/Group;->isAdmin:Z

    .line 1354
    iget-object v1, p0, Lcom/vkontakte/android/WallView$31;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1}, Lcom/vkontakte/android/WallView;->access$16(Lcom/vkontakte/android/WallView;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vkontakte/android/api/Group;->isClosed:Z

    .line 1355
    iget-object v1, p0, Lcom/vkontakte/android/WallView$31;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1}, Lcom/vkontakte/android/WallView;->access$9(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    iput-object v1, v0, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    .line 1356
    iget-object v1, p0, Lcom/vkontakte/android/WallView$31;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1}, Lcom/vkontakte/android/WallView;->access$32(Lcom/vkontakte/android/WallView;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/api/Group;->type:I

    .line 1357
    iget-object v1, p0, Lcom/vkontakte/android/WallView$31;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v1}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/cache/GroupsCache;->add(Lcom/vkontakte/android/api/Group;Landroid/content/Context;)V

    .line 1358
    iget-object v1, p0, Lcom/vkontakte/android/WallView$31;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1, v4}, Lcom/vkontakte/android/WallView;->access$33(Lcom/vkontakte/android/WallView;Z)V

    .line 1359
    iget-object v1, p0, Lcom/vkontakte/android/WallView$31;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v1}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.GROUPS_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
