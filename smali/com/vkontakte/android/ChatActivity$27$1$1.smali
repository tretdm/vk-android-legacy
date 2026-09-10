.class Lcom/vkontakte/android/ChatActivity$27$1$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity$27$1;->uploadFailed()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/ChatActivity$27$1;

.field private final synthetic val$msg:Ljava/lang/String;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity$27$1;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$27$1$1;->this$2:Lcom/vkontakte/android/ChatActivity$27$1;

    iput-object p2, p0, Lcom/vkontakte/android/ChatActivity$27$1$1;->val$pdlg:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/vkontakte/android/ChatActivity$27$1$1;->val$msg:Ljava/lang/String;

    .line 1303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ChatActivity$27$1$1;)Lcom/vkontakte/android/ChatActivity$27$1;
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$27$1$1;->this$2:Lcom/vkontakte/android/ChatActivity$27$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1305
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$27$1$1;->this$2:Lcom/vkontakte/android/ChatActivity$27$1;

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity$27$1;->access$0(Lcom/vkontakte/android/ChatActivity$27$1;)Lcom/vkontakte/android/ChatActivity$27;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity$27;->access$0(Lcom/vkontakte/android/ChatActivity$27;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1306
    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1307
    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1308
    const v1, 0x7f090030

    new-instance v2, Lcom/vkontakte/android/ChatActivity$27$1$1$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ChatActivity$27$1$1$1;-><init>(Lcom/vkontakte/android/ChatActivity$27$1$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1317
    const v1, 0x7f090031

    new-instance v2, Lcom/vkontakte/android/ChatActivity$27$1$1$2;

    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$27$1$1;->val$pdlg:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity$27$1$1;->val$msg:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lcom/vkontakte/android/ChatActivity$27$1$1$2;-><init>(Lcom/vkontakte/android/ChatActivity$27$1$1;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1331
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    :goto_0
    return-void

    .line 1332
    :catch_0
    move-exception v0

    goto :goto_0
.end method
