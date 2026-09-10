.class Lcom/vkontakte/android/QuickSearchActivity$1;
.super Landroid/widget/ListView;
.source "QuickSearchActivity.java"


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
.method constructor <init>(Lcom/vkontakte/android/QuickSearchActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/QuickSearchActivity$1;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    .line 80
    invoke-direct {p0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method
