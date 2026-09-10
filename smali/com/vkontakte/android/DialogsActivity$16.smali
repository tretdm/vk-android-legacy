.class Lcom/vkontakte/android/DialogsActivity$16;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DialogsActivity;->deleteHistory(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DialogsActivity;

.field private final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DialogsActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$16;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iput p2, p0, Lcom/vkontakte/android/DialogsActivity$16;->val$uid:I

    .line 988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/DialogsActivity$16;)Lcom/vkontakte/android/DialogsActivity;
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$16;->this$0:Lcom/vkontakte/android/DialogsActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 991
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "messages.deleteDialog"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 992
    const-string v1, "uid"

    iget v2, p0, Lcom/vkontakte/android/DialogsActivity$16;->val$uid:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 993
    new-instance v1, Lcom/vkontakte/android/DialogsActivity$16$1;

    iget v2, p0, Lcom/vkontakte/android/DialogsActivity$16;->val$uid:I

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/DialogsActivity$16$1;-><init>(Lcom/vkontakte/android/DialogsActivity$16;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1004
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$16;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1005
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$16;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1006
    return-void
.end method
