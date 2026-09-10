.class Lcom/vkontakte/android/MenuListView$2$1;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MenuListView$2;->onPlayStateChanged(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/MenuListView$2;

.field private final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MenuListView$2;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$2$1;->this$1:Lcom/vkontakte/android/MenuListView$2;

    iput p2, p0, Lcom/vkontakte/android/MenuListView$2$1;->val$state:I

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$2$1;->this$1:Lcom/vkontakte/android/MenuListView$2;

    invoke-static {v1}, Lcom/vkontakte/android/MenuListView$2;->access$0(Lcom/vkontakte/android/MenuListView$2;)Lcom/vkontakte/android/MenuListView;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/MenuListView;->access$5(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$2$1;->this$1:Lcom/vkontakte/android/MenuListView$2;

    invoke-static {v1}, Lcom/vkontakte/android/MenuListView$2;->access$0(Lcom/vkontakte/android/MenuListView$2;)Lcom/vkontakte/android/MenuListView;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/MenuListView;->access$5(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$2$1;->this$1:Lcom/vkontakte/android/MenuListView$2;

    invoke-static {v1}, Lcom/vkontakte/android/MenuListView$2;->access$0(Lcom/vkontakte/android/MenuListView$2;)Lcom/vkontakte/android/MenuListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 149
    :cond_0
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-nez v1, :cond_1

    .line 157
    :goto_0
    return-void

    .line 150
    :cond_1
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    .line 151
    .local v0, "af":Lcom/vkontakte/android/AudioFile;
    if-eqz v0, :cond_2

    .line 152
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$2$1;->this$1:Lcom/vkontakte/android/MenuListView$2;

    invoke-static {v1}, Lcom/vkontakte/android/MenuListView$2;->access$0(Lcom/vkontakte/android/MenuListView$2;)Lcom/vkontakte/android/MenuListView;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/MenuListView;->access$5(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$2$1;->this$1:Lcom/vkontakte/android/MenuListView$2;

    invoke-static {v1}, Lcom/vkontakte/android/MenuListView$2;->access$0(Lcom/vkontakte/android/MenuListView$2;)Lcom/vkontakte/android/MenuListView;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/MenuListView;->access$5(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900e7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$2$1;->this$1:Lcom/vkontakte/android/MenuListView$2;

    invoke-static {v1}, Lcom/vkontakte/android/MenuListView$2;->access$0(Lcom/vkontakte/android/MenuListView$2;)Lcom/vkontakte/android/MenuListView;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/MenuListView;->access$5(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900e6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v2, p0, Lcom/vkontakte/android/MenuListView$2$1;->val$state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const v2, 0x7f02011b

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$2$1;->this$1:Lcom/vkontakte/android/MenuListView$2;

    invoke-static {v1}, Lcom/vkontakte/android/MenuListView$2;->access$0(Lcom/vkontakte/android/MenuListView$2;)Lcom/vkontakte/android/MenuListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/MenuListView;->postInvalidate()V

    goto :goto_0

    .line 155
    :cond_3
    const v2, 0x7f02011c

    goto :goto_1
.end method
