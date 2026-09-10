.class Lcom/vkontakte/android/ReportContentActivity$2;
.super Ljava/lang/Object;
.source "ReportContentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ReportContentActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/ReportContentActivity$2;->this$0:Lcom/vkontakte/android/ReportContentActivity;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/ReportContentActivity$2;->this$0:Lcom/vkontakte/android/ReportContentActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/ReportContentActivity;->finish()V

    .line 29
    return-void
.end method
