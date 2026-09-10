.class Lcom/vkontakte/android/QuickSearchActivity$5;
.super Ljava/lang/Object;
.source "QuickSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/QuickSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/QuickSearchActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/QuickSearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/QuickSearchActivity$5;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$5;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$18(Lcom/vkontakte/android/QuickSearchActivity;)V

    .line 205
    return-void
.end method
