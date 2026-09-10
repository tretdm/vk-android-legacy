.class Lcom/vkontakte/android/NewVideoPlayerActivity$1;
.super Ljava/lang/Object;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x7f08014f

    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$3(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$4(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$5(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$6(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    goto :goto_0

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$7(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    .line 166
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$8(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$8(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$8(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$8(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$3(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->pause()V

    .line 171
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0201ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    invoke-static {v1, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$9(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V

    goto :goto_0

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$3(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->play()V

    .line 174
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0201b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 176
    :cond_5
    const/4 v0, 0x1

    goto :goto_2
.end method
