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
    .line 194
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x7f0801b6

    .line 197
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$100(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$200(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$300(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$400(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$500(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    .line 203
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$600(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$600(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 204
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$600(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$600(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$700(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 207
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$100(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->pause()V

    .line 208
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02016a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$700(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    invoke-static {v1, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$702(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)Z

    goto :goto_0

    .line 210
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$100(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->play()V

    .line 211
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$1;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020169

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 213
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method
