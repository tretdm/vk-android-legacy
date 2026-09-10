.class Lcom/vkontakte/android/fragments/AudioPlayerFragment$5;
.super Ljava/lang/Object;
.source "AudioPlayerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioPlayerFragment;->confirmAndDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;

.field private final synthetic val$file:Lcom/vkontakte/android/AudioFile;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioPlayerFragment;Lcom/vkontakte/android/AudioFile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$5;->this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$5;->val$file:Lcom/vkontakte/android/AudioFile;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$5;->this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$5;->val$file:Lcom/vkontakte/android/AudioFile;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->access$1(Lcom/vkontakte/android/fragments/AudioPlayerFragment;Lcom/vkontakte/android/AudioFile;)V

    .line 267
    return-void
.end method
