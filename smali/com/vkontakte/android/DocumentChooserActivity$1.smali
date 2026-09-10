.class Lcom/vkontakte/android/DocumentChooserActivity$1;
.super Ljava/lang/Object;
.source "DocumentChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DocumentChooserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DocumentChooserActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DocumentChooserActivity;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vkontakte/android/DocumentChooserActivity$1;->this$0:Lcom/vkontakte/android/DocumentChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/DocumentChooserActivity$1;->this$0:Lcom/vkontakte/android/DocumentChooserActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/DocumentChooserActivity;->finish()V

    .line 66
    return-void
.end method
