.class Lcom/vkontakte/android/AudioListActivity$21;
.super Ljava/lang/Object;
.source "AudioListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioListActivity;->showListSelectDialog([I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioListActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity$21;->this$0:Lcom/vkontakte/android/AudioListActivity;

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 801
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$21;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioListActivity;->loadPlaylists()V

    .line 802
    return-void
.end method
