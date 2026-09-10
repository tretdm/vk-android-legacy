.class Lcom/vkontakte/android/ReportContentActivity$3;
.super Ljava/lang/Object;
.source "ReportContentActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/ContentReport$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ReportContentActivity;->sendReport(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ReportContentActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ReportContentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ReportContentActivity$3;->this$0:Lcom/vkontakte/android/ReportContentActivity;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v1, p0, Lcom/vkontakte/android/ReportContentActivity$3;->this$0:Lcom/vkontakte/android/ReportContentActivity;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f08006b

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/ReportContentActivity$3;->this$0:Lcom/vkontakte/android/ReportContentActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/ReportContentActivity;->finish()V

    .line 47
    return-void

    .line 45
    :cond_0
    const v0, 0x7f080068

    goto :goto_0
.end method

.method public success()V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/ReportContentActivity$3;->this$0:Lcom/vkontakte/android/ReportContentActivity;

    const v1, 0x7f0802d6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/ReportContentActivity$3;->this$0:Lcom/vkontakte/android/ReportContentActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/ReportContentActivity;->finish()V

    .line 41
    return-void
.end method
