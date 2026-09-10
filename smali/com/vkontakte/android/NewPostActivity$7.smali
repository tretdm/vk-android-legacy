.class Lcom/vkontakte/android/NewPostActivity$7;
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


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$7;->this$0:Lcom/vkontakte/android/NewPostActivity;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "choice"    # I

    .prologue
    .line 233
    if-nez p2, :cond_1

    .line 234
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$7;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewPostActivity;->startCamera()V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$7;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewPostActivity;->startGallery()V

    goto :goto_0
.end method
