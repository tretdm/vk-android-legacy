.class public interface abstract Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;
.super Ljava/lang/Object;
.source "RefreshableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/RefreshableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRefreshListener"
.end annotation


# virtual methods
.method public abstract getLastUpdatedTime()Ljava/lang/String;
.end method

.method public abstract onRefresh()V
.end method

.method public abstract onScrolled(F)V
.end method
