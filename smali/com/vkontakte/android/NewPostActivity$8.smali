.class Lcom/vkontakte/android/NewPostActivity$8;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewPostActivity;

.field private final synthetic val$hasCam:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$8;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iput-boolean p2, p0, Lcom/vkontakte/android/NewPostActivity$8;->val$hasCam:Z

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "choice"    # I

    .prologue
    const/4 v1, 0x1

    .line 257
    iget-boolean v0, p0, Lcom/vkontakte/android/NewPostActivity$8;->val$hasCam:Z

    if-eqz v0, :cond_3

    .line 258
    if-nez p2, :cond_1

    .line 259
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$8;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewPostActivity;->startCamera()V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    if-ne p2, v1, :cond_2

    .line 262
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$8;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewPostActivity;->startGallery()V

    goto :goto_0

    .line 264
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$8;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewPostActivity;->removePhoto()V

    goto :goto_0

    .line 268
    :cond_3
    if-nez p2, :cond_4

    .line 269
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$8;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewPostActivity;->startGallery()V

    goto :goto_0

    .line 271
    :cond_4
    if-ne p2, v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$8;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewPostActivity;->removePhoto()V

    goto :goto_0
.end method
