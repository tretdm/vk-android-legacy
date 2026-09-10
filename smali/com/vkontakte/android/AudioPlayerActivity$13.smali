.class Lcom/vkontakte/android/AudioPlayerActivity$13;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity;->confirmAndDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerActivity;

.field final synthetic val$file:Lcom/vkontakte/android/AudioFile;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity;Lcom/vkontakte/android/AudioFile;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$13;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/AudioPlayerActivity$13;->val$file:Lcom/vkontakte/android/AudioFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 522
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$13;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$13;->val$file:Lcom/vkontakte/android/AudioFile;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/AudioPlayerActivity;->access$500(Lcom/vkontakte/android/AudioPlayerActivity;Lcom/vkontakte/android/AudioFile;Z)V

    .line 523
    return-void
.end method
