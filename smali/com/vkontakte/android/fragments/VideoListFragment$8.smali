.class Lcom/vkontakte/android/fragments/VideoListFragment$8;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/VideoListFragment;->showAddVideoBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/VideoListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/VideoListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 259
    if-nez p2, :cond_0

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.sizeLimit"

    const-wide v2, 0x80000000L

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 262
    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    const/16 v2, 0xea

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/fragments/VideoListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 264
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 265
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$8;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    const/16 v2, 0xeb

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/fragments/VideoListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 269
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
