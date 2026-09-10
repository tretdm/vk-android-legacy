.class Lcom/vkontakte/android/ChatActivity$27;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity;->showAddPhotoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$27;->this$0:Lcom/vkontakte/android/ChatActivity;

    .line 1144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "choice"    # I

    .prologue
    .line 1146
    if-nez p2, :cond_1

    .line 1147
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$27;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/ChatActivity;->startCamera()V

    .line 1152
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$27;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/ChatActivity;->startGallery()V

    goto :goto_0
.end method
