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

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 208
    iget-object v0, p0, Lcom/vkontakte/android/WallView$8;->this$0:Lcom/vkontakte/android/WallView;

    iget-boolean v0, v0, Lcom/vkontakte/android/WallView;->dataLoading:Z

    if-eqz v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/WallView$8;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$3(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f060118

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/vkontakte/android/WallView$8;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$3(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f060117

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/vkontakte/android/WallView$8;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$3(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f060116

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v3, p0, Lcom/vkontakte/android/WallView$8;->this$0:Lcom/vkontakte/android/WallView;

    iget-object v0, p0, Lcom/vkontakte/android/WallView$8;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$4(Lcom/vkontakte/android/WallView;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/vkontakte/android/WallView;->access$5(Lcom/vkontakte/android/WallView;Z)V

    .line 213
    iget-object v0, p0, Lcom/vkontakte/android/WallView$8;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$1(Lcom/vkontakte/android/WallView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/WallView$8;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$1(Lcom/vkontakte/android/WallView;)I

    move-result v0

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v3, :cond_2

    :cond_1
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wall_show_all_posts"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$8;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$4(Lcom/vkontakte/android/WallView;)Z

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/WallView$8;->this$0:Lcom/vkontakte/android/WallView;

    iget-object v1, p0, Lcom/vkontakte/android/WallView$8;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v1}, Lcom/vkontakte/android/WallView;->access$4(Lcom/vkontakte/android/WallView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/WallView;->access$6(Lcom/vkontakte/android/WallView;Z)V

    .line 215
    iget-object v0, p0, Lcom/vkontakte/android/WallView$8;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/WallView;->loadData(Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 212
    goto :goto_1
.end method
