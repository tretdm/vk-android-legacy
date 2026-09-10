.class Lcom/vkontakte/android/WallView$8;
.super Ljava/lang/Object;
.source "WallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallView;->addHeaderViews()V
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
    iput-object p1, p0, Lcom/vkontakte/android/WallView$8;->this$0:Lcom/vkontakte/android/WallView;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    invoke-static {p1}, Lcom/vkontakte/android/Global;->setViewSel(Landroid/view/View;)V

    .line 214
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/WallView$8;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v1}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uid"

    iget-object v2, p0, Lcom/vkontakte/android/WallView$8;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v2}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    iget-object v1, p0, Lcom/vkontakte/android/WallView$8;->this$0:Lcom/vkontakte/android/WallView;

    iget-boolean v1, v1, Lcom/vkontakte/android/WallView;->isAdmin:Z

    if-eqz v1, :cond_0

    .line 217
    const-string v1, "is_group_admin"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    const-string v1, "group_title"

    iget-object v2, p0, Lcom/vkontakte/android/WallView$8;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v2}, Lcom/vkontakte/android/WallView;->access$6(Lcom/vkontakte/android/WallView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v1, "group_photo"

    iget-object v2, p0, Lcom/vkontakte/android/WallView$8;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v2}, Lcom/vkontakte/android/WallView;->access$7(Lcom/vkontakte/android/WallView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/WallView$8;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v1}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 222
    return-void
.end method
