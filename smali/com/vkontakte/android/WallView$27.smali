.class Lcom/vkontakte/android/WallView$27;
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
    iput-object p1, p0, Lcom/vkontakte/android/WallView$27;->this$0:Lcom/vkontakte/android/WallView;

    .line 1194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1221
    return-void
.end method

.method public success()V
    .locals 7

    .prologue
    const v6, 0x7f09017d

    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f060111

    .line 1197
    iget-object v1, p0, Lcom/vkontakte/android/WallView$27;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1}, Lcom/vkontakte/android/WallView;->access$15(Lcom/vkontakte/android/WallView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1198
    iget-object v1, p0, Lcom/vkontakte/android/WallView$27;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v1}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09016b

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1199
    iget-object v1, p0, Lcom/vkontakte/android/WallView$27;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1}, Lcom/vkontakte/android/WallView;->access$19(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1200
    iget-object v1, p0, Lcom/vkontakte/android/WallView$27;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1}, Lcom/vkontakte/android/WallView;->access$20(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1201
    iget-object v1, p0, Lcom/vkontakte/android/WallView$27;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1, v5}, Lcom/vkontakte/android/WallView;->access$27(Lcom/vkontakte/android/WallView;Z)V

    .line 1215
    :goto_0
    return-void

    .line 1203
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/WallView$27;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1}, Lcom/vkontakte/android/WallView;->access$19(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1204
    iget-object v1, p0, Lcom/vkontakte/android/WallView$27;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1}, Lcom/vkontakte/android/WallView;->access$20(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1205
    iget-object v1, p0, Lcom/vkontakte/android/WallView$27;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1}, Lcom/vkontakte/android/WallView;->access$26(Lcom/vkontakte/android/WallView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1206
    new-instance v0, Lcom/vkontakte/android/api/Group;

    invoke-direct {v0}, Lcom/vkontakte/android/api/Group;-><init>()V

    .line 1207
    .local v0, "group":Lcom/vkontakte/android/api/Group;
    iget-object v1, p0, Lcom/vkontakte/android/WallView$27;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lcom/vkontakte/android/api/Group;->id:I

    .line 1208
    iget-object v1, p0, Lcom/vkontakte/android/WallView$27;->this$0:Lcom/vkontakte/android/WallView;

    iget-boolean v1, v1, Lcom/vkontakte/android/WallView;->isAdmin:Z

    iput-boolean v1, v0, Lcom/vkontakte/android/api/Group;->isAdmin:Z

    .line 1209
    iget-object v1, p0, Lcom/vkontakte/android/WallView$27;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1}, Lcom/vkontakte/android/WallView;->access$15(Lcom/vkontakte/android/WallView;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vkontakte/android/api/Group;->isClosed:Z

    .line 1210
    iget-object v1, p0, Lcom/vkontakte/android/WallView$27;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1}, Lcom/vkontakte/android/WallView;->access$8(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    iput-object v1, v0, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    .line 1211
    iget-object v1, p0, Lcom/vkontakte/android/WallView$27;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1}, Lcom/vkontakte/android/WallView;->access$28(Lcom/vkontakte/android/WallView;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/api/Group;->type:I

    .line 1212
    iget-object v1, p0, Lcom/vkontakte/android/WallView$27;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v1}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/cache/GroupsCache;->add(Lcom/vkontakte/android/api/Group;Landroid/content/Context;)V

    .line 1213
    iget-object v1, p0, Lcom/vkontakte/android/WallView$27;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1, v5}, Lcom/vkontakte/android/WallView;->access$29(Lcom/vkontakte/android/WallView;Z)V

    goto :goto_0
.end method
