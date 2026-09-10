.class Lcom/vkontakte/android/AudioPlayerActivity$19$2;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity$19;->notAvailable(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/AudioPlayerActivity$19;

.field private final synthetic val$aid:I

.field private final synthetic val$oid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity$19;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$19$2;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$19;

    iput p2, p0, Lcom/vkontakte/android/AudioPlayerActivity$19$2;->val$aid:I

    iput p3, p0, Lcom/vkontakte/android/AudioPlayerActivity$19$2;->val$oid:I

    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 824
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$19$2;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$19;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerActivity$19;->access$0(Lcom/vkontakte/android/AudioPlayerActivity$19;)Lcom/vkontakte/android/AudioPlayerActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    iget v2, p0, Lcom/vkontakte/android/AudioPlayerActivity$19$2;->val$aid:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$19$2;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$19;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerActivity$19;->access$0(Lcom/vkontakte/android/AudioPlayerActivity$19;)Lcom/vkontakte/android/AudioPlayerActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v2, p0, Lcom/vkontakte/android/AudioPlayerActivity$19$2;->val$oid:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$19$2;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$19;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerActivity$19;->access$0(Lcom/vkontakte/android/AudioPlayerActivity$19;)Lcom/vkontakte/android/AudioPlayerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerActivity;->access$14(Lcom/vkontakte/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$19$2;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$19;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerActivity$19;->access$0(Lcom/vkontakte/android/AudioPlayerActivity$19;)Lcom/vkontakte/android/AudioPlayerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerActivity;->access$14(Lcom/vkontakte/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09008a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 826
    .local v0, "iv":Landroid/widget/ImageView;
    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 827
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 828
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method
