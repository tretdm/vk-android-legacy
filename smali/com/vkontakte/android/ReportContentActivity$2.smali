.class Lcom/vkontakte/android/ReportContentActivity$2;
.super Ljava/lang/Object;
.source "ReportContentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 19
    iput-object p1, p0, Lcom/vkontakte/android/ReportContentActivity$2;->this$0:Lcom/vkontakte/android/ReportContentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vkontakte/android/ReportContentActivity$2;->this$0:Lcom/vkontakte/android/ReportContentActivity;

    invoke-static {}, Lcom/vkontakte/android/ReportContentActivity;->access$000()[I

    move-result-object v1

    aget v1, v1, p2

    invoke-static {v0, v1}, Lcom/vkontakte/android/ReportContentActivity;->access$100(Lcom/vkontakte/android/ReportContentActivity;I)V

    .line 23
    return-void
.end method
