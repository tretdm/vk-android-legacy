.class Lcom/vkontakte/android/ChatActivity$32$1$3;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity$32$1;->setProgress(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/ChatActivity$32$1;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;

.field private final synthetic val$progress:I

.field private final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity$32$1;ILandroid/app/ProgressDialog;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$32$1$3;->this$2:Lcom/vkontakte/android/ChatActivity$32$1;

    iput p2, p0, Lcom/vkontakte/android/ChatActivity$32$1$3;->val$progress:I

    iput-object p3, p0, Lcom/vkontakte/android/ChatActivity$32$1$3;->val$pdlg:Landroid/app/ProgressDialog;

    iput p4, p0, Lcom/vkontakte/android/ChatActivity$32$1$3;->val$total:I

    .line 1698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1699
    iget v0, p0, Lcom/vkontakte/android/ChatActivity$32$1$3;->val$progress:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1700
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1$3;->val$pdlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1701
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1$3;->val$pdlg:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/vkontakte/android/ChatActivity$32$1$3;->val$total:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1702
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1$3;->val$pdlg:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/vkontakte/android/ChatActivity$32$1$3;->val$progress:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1706
    :goto_0
    return-void

    .line 1704
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1$3;->val$pdlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0
.end method
