.class Lcom/vkontakte/android/MenuListView$2;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MenuListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MenuListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$2;->this$0:Lcom/vkontakte/android/MenuListView;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayStateChanged(III)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "aid"    # I
    .param p3, "state"    # I

    .prologue
    .line 109
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$2;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v1}, Lcom/vkontakte/android/MenuListView;->access$3(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$2;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v1}, Lcom/vkontakte/android/MenuListView;->access$3(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$2;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 114
    :cond_0
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    .line 115
    .local v0, "af":Lcom/vkontakte/android/AudioFile;
    if-eqz v0, :cond_1

    .line 116
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$2;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v1}, Lcom/vkontakte/android/MenuListView;->access$3(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0600af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$2;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v1}, Lcom/vkontakte/android/MenuListView;->access$3(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0600b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$2;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v1}, Lcom/vkontakte/android/MenuListView;->access$3(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0600ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    const v2, 0x7f02015f

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$2;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/MenuListView;->postInvalidate()V

    .line 121
    return-void

    .line 119
    :cond_2
    const v2, 0x7f020162

    goto :goto_0
.end method
