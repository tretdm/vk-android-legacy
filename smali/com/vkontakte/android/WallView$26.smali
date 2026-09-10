.class Lcom/vkontakte/android/WallView$26;
.super Ljava/lang/Object;
.source "WallView.java"

# interfaces
.implements Lcom/vkontakte/android/api/GroupsLeave$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallView;->doLeaveGroup()V
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
    iput-object p1, p0, Lcom/vkontakte/android/WallView$26;->this$0:Lcom/vkontakte/android/WallView;

    .line 1166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1186
    return-void
.end method

.method public success()V
    .locals 5

    .prologue
    const v4, 0x7f090167

    const v3, 0x7f060111

    const/4 v2, 0x0

    .line 1169
    iget-object v0, p0, Lcom/vkontakte/android/WallView$26;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$19(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1170
    iget-object v0, p0, Lcom/vkontakte/android/WallView$26;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$20(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1173
    iget-object v0, p0, Lcom/vkontakte/android/WallView$26;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$26(Lcom/vkontakte/android/WallView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1174
    iget-object v0, p0, Lcom/vkontakte/android/WallView$26;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$16(Lcom/vkontakte/android/WallView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/vkontakte/android/WallView$26;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09017e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1176
    iget-object v0, p0, Lcom/vkontakte/android/WallView$26;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$19(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1177
    iget-object v0, p0, Lcom/vkontakte/android/WallView$26;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$20(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1178
    iget-object v0, p0, Lcom/vkontakte/android/WallView$26;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/WallView;->access$27(Lcom/vkontakte/android/WallView;Z)V

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/WallView$26;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/vkontakte/android/WallView$26;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v1}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/cache/GroupsCache;->remove(ILandroid/content/Context;)V

    .line 1181
    return-void
.end method
