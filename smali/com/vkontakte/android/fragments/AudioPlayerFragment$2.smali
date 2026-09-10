.class Lcom/vkontakte/android/fragments/AudioPlayerFragment$2;
.super Ljava/lang/Object;
.source "AudioPlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioPlayerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioPlayerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f08007b

    const/4 v3, 0x0

    .line 158
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->access$0(Lcom/vkontakte/android/fragments/AudioPlayerFragment;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v1

    const v2, 0x7f080078

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/ActionBar;->getHeight()I

    move-result v2

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 159
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->access$0(Lcom/vkontakte/android/fragments/AudioPlayerFragment;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->access$0(Lcom/vkontakte/android/fragments/AudioPlayerFragment;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 161
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 162
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->access$0(Lcom/vkontakte/android/fragments/AudioPlayerFragment;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->access$0(Lcom/vkontakte/android/fragments/AudioPlayerFragment;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v1

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/AudioPlayerView;->setPlaying(Z)V

    .line 165
    return-void
.end method
