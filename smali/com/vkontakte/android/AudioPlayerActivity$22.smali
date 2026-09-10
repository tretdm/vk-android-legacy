.class Lcom/vkontakte/android/AudioPlayerActivity$22;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity;->enableBroadcast(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerActivity;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 892
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$22;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iput-boolean p2, p0, Lcom/vkontakte/android/AudioPlayerActivity$22;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$22;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const v1, 0x7f08006f

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$22;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 895
    return-void
.end method
