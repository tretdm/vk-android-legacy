.class Lcom/vkontakte/android/NewVideoPlayerActivity$3;
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
    .line 224
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$3;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$3;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$200(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$3;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$500(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    .line 229
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$3;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$3;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$1100(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$1102(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)Z

    .line 230
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$3;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const v1, 0x7f0801bc

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$3;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$1100(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f02016f

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$3;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->resize()V

    goto :goto_0

    .line 229
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 230
    :cond_2
    const v1, 0x7f020167

    goto :goto_2
.end method
