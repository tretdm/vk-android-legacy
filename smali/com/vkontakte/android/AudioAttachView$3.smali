.class Lcom/vkontakte/android/AudioAttachView$3;
.super Ljava/lang/Object;
.source "AudioAttachView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioAttachView;->onPlayStateChanged(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioAttachView;

.field private final synthetic val$aid:I

.field private final synthetic val$oid:I

.field private final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioAttachView;III)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioAttachView$3;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iput p2, p0, Lcom/vkontakte/android/AudioAttachView$3;->val$oid:I

    iput p3, p0, Lcom/vkontakte/android/AudioAttachView$3;->val$aid:I

    iput p4, p0, Lcom/vkontakte/android/AudioAttachView$3;->val$state:I

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 240
    iget v0, p0, Lcom/vkontakte/android/AudioAttachView$3;->val$oid:I

    iget-object v3, p0, Lcom/vkontakte/android/AudioAttachView$3;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iget v3, v3, Lcom/vkontakte/android/AudioAttachView;->oid:I

    if-ne v0, v3, :cond_5

    iget v0, p0, Lcom/vkontakte/android/AudioAttachView$3;->val$aid:I

    iget-object v3, p0, Lcom/vkontakte/android/AudioAttachView$3;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iget v3, v3, Lcom/vkontakte/android/AudioAttachView;->id:I

    if-ne v0, v3, :cond_5

    .line 241
    iget-object v3, p0, Lcom/vkontakte/android/AudioAttachView$3;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iget v0, p0, Lcom/vkontakte/android/AudioAttachView$3;->val$state:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/vkontakte/android/AudioAttachView$3;->val$state:I

    if-eq v0, v4, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/vkontakte/android/AudioAttachView;->setPlaying(Z)V

    .line 242
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$3;->this$0:Lcom/vkontakte/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkontakte/android/AudioAttachView;->access$2(Lcom/vkontakte/android/AudioAttachView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$3;->this$0:Lcom/vkontakte/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkontakte/android/AudioAttachView;->access$2(Lcom/vkontakte/android/AudioAttachView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$3;->this$0:Lcom/vkontakte/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkontakte/android/AudioAttachView;->access$3(Lcom/vkontakte/android/AudioAttachView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 246
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$3;->this$0:Lcom/vkontakte/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkontakte/android/AudioAttachView;->access$4(Lcom/vkontakte/android/AudioAttachView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 247
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$3;->this$0:Lcom/vkontakte/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkontakte/android/AudioAttachView;->access$2(Lcom/vkontakte/android/AudioAttachView;)Landroid/widget/SeekBar;

    move-result-object v3

    iget v0, p0, Lcom/vkontakte/android/AudioAttachView$3;->val$state:I

    if-ne v0, v4, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setIndeterminate(Z)V

    .line 248
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$3;->this$0:Lcom/vkontakte/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkontakte/android/AudioAttachView;->access$2(Lcom/vkontakte/android/AudioAttachView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v3, p0, Lcom/vkontakte/android/AudioAttachView$3;->val$state:I

    if-eq v3, v4, :cond_4

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 254
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v2

    .line 241
    goto :goto_0

    :cond_3
    move v0, v1

    .line 247
    goto :goto_1

    :cond_4
    move v2, v1

    .line 248
    goto :goto_2

    .line 249
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$3;->this$0:Lcom/vkontakte/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkontakte/android/AudioAttachView;->access$2(Lcom/vkontakte/android/AudioAttachView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$3;->this$0:Lcom/vkontakte/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkontakte/android/AudioAttachView;->access$2(Lcom/vkontakte/android/AudioAttachView;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$3;->this$0:Lcom/vkontakte/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkontakte/android/AudioAttachView;->access$3(Lcom/vkontakte/android/AudioAttachView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 252
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$3;->this$0:Lcom/vkontakte/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkontakte/android/AudioAttachView;->access$4(Lcom/vkontakte/android/AudioAttachView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_3
.end method
