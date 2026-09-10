.class Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$1;
.super Ljava/lang/Object;
.source "PullToRefreshAttacher.java"

# interfaces
.implements Luk/co/senab/actionbarpulltorefresh/library/EnvironmentDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->createDefaultEnvironmentDelegate()Luk/co/senab/actionbarpulltorefresh/library/EnvironmentDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;


# direct methods
.method constructor <init>(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$1;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContextForInflater(Landroid/app/Activity;)Landroid/content/Context;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 490
    const/4 v1, 0x0

    .line 491
    .local v1, "context":Landroid/content/Context;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 492
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 493
    .local v0, "ab":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    .line 497
    .end local v0    # "ab":Landroid/app/ActionBar;
    :cond_0
    if-nez v1, :cond_1

    .line 498
    move-object v1, p1

    .line 500
    :cond_1
    return-object v1
.end method
