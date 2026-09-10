.class Lcom/vkontakte/android/SelectGeoPointActivity$1;
.super Ljava/lang/Object;
.source "SelectGeoPointActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SelectGeoPointActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SelectGeoPointActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SelectGeoPointActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$1;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$1;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/SelectGeoPointActivity;->finish()V

    .line 84
    return-void
.end method
