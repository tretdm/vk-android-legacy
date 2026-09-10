.class public Lcom/vkontakte/android/ReportContentActivity;
.super Landroid/app/Activity;
.source "ReportContentActivity.java"


# static fields
.field private static final typeMap:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkontakte/android/ReportContentActivity;->typeMap:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x6
        0x5
        0x4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/vkontakte/android/ReportContentActivity;->typeMap:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/ReportContentActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ReportContentActivity;
    .param p1, "x1"    # I

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ReportContentActivity;->sendReport(I)V

    return-void
.end method

.method private sendReport(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 35
    new-instance v0, Lcom/vkontakte/android/api/ContentReport;

    invoke-virtual {p0}, Lcom/vkontakte/android/ReportContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ownerID"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/ReportContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "itemID"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/ReportContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/vkontakte/android/api/ContentReport;-><init>(IILjava/lang/String;I)V

    new-instance v1, Lcom/vkontakte/android/ReportContentActivity$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ReportContentActivity$3;-><init>(Lcom/vkontakte/android/ReportContentActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/ContentReport;->setCallback(Lcom/vkontakte/android/api/ContentReport$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 51
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0262

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07005a

    new-instance v2, Lcom/vkontakte/android/ReportContentActivity$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ReportContentActivity$2;-><init>(Lcom/vkontakte/android/ReportContentActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ReportContentActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ReportContentActivity$1;-><init>(Lcom/vkontakte/android/ReportContentActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 32
    return-void
.end method
