.class Lcom/vkontakte/android/AudioPlayerActivity$23;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity;->setNumber(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerActivity;

.field private final synthetic val$current:I

.field private final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$23;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iput p2, p0, Lcom/vkontakte/android/AudioPlayerActivity$23;->val$current:I

    iput p3, p0, Lcom/vkontakte/android/AudioPlayerActivity$23;->val$total:I

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 907
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$23;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$23;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080088

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/vkontakte/android/AudioPlayerActivity$23;->val$current:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/vkontakte/android/AudioPlayerActivity$23;->val$total:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 908
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$23;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerActivity;->updatePager()V

    .line 909
    return-void
.end method
