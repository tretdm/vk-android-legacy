.class Lcom/vkontakte/android/ExtendedTabBar$Tab;
.super Ljava/lang/Object;
.source "ExtendedTabBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ExtendedTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tab"
.end annotation


# instance fields
.field badge:Ljava/lang/String;

.field contentActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field contentView:Landroid/view/View;

.field icon:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/vkontakte/android/ExtendedTabBar;

.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/ExtendedTabBar;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/vkontakte/android/ExtendedTabBar$Tab;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ExtendedTabBar;Lcom/vkontakte/android/ExtendedTabBar$Tab;)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ExtendedTabBar$Tab;-><init>(Lcom/vkontakte/android/ExtendedTabBar;)V

    return-void
.end method
