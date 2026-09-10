.class Lcom/vkontakte/android/AudioPlayerActivity$17;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity;->showBroadcastDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerActivity;

.field final synthetic val$checked:[Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity;[Z)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$17;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/AudioPlayerActivity$17;->val$checked:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 705
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$17;->val$checked:[Z

    aput-boolean p3, v0, p2

    .line 706
    return-void
.end method
