.class public Lcom/vkontakte/android/fragments/SignupPhoneFragment;
.super Landroid/app/Fragment;
.source "SignupPhoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;,
        Lcom/vkontakte/android/fragments/SignupPhoneFragment$CountriesAdapter;
    }
.end annotation


# instance fields
.field private btnClickListener:Landroid/view/View$OnClickListener;

.field private btnText:Ljava/lang/String;

.field private canadianPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;",
            ">;"
        }
    .end annotation
.end field

.field private dontUpdateField:Z

.field private explainText:Ljava/lang/String;

.field private ignoreSelCallback:Z

.field private selectedCountry:I

.field private showForgot:Z

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->countries:Ljava/util/ArrayList;

    .line 39
    iput v2, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->selectedCountry:I

    .line 40
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->ignoreSelCallback:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->dontUpdateField:Z

    .line 55
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "403"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "587"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "780"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "250"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "604"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "778"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "418"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "438"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "450"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "514"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "579"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "581"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "819"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "204"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "902"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "867"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "506"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "709"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "226"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "249"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "289"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "343"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "416"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "519"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "613"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "647"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "705"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "807"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "905"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "902"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "306"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "867"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->canadianPrefixes:Ljava/util/List;

    .line 61
    return-void
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->canadianPrefixes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->btnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    .prologue
    .line 34
    iget v0, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->selectedCountry:I

    return v0
.end method

.method static synthetic access$202(Lcom/vkontakte/android/fragments/SignupPhoneFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SignupPhoneFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->selectedCountry:I

    return p1
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->ignoreSelCallback:Z

    return v0
.end method

.method static synthetic access$302(Lcom/vkontakte/android/fragments/SignupPhoneFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SignupPhoneFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->ignoreSelCallback:Z

    return p1
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/SignupPhoneFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SignupPhoneFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->setCountry(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkontakte/android/fragments/SignupPhoneFragment;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SignupPhoneFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->findCountryByCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->countries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkontakte/android/fragments/SignupPhoneFragment;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SignupPhoneFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->findCountryByIso(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/vkontakte/android/fragments/SignupPhoneFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SignupPhoneFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->dontUpdateField:Z

    return p1
.end method

.method private findCountryByCode(Ljava/lang/String;)I
    .locals 7
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 314
    const/4 v2, 0x0

    .line 315
    .local v2, "i":I
    const/4 v1, 0x0

    .line 316
    .local v1, "count":I
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->countries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;

    .line 317
    .local v0, "c":Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;
    iget-object v5, v0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;->isoCode:Ljava/lang/String;

    const-string v6, "US"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v4, v2

    .line 337
    .end local v0    # "c":Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;
    :cond_1
    :goto_1
    return v4

    .line 320
    .restart local v0    # "c":Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    .end local v0    # "c":Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;
    :cond_3
    const/4 v2, 0x0

    .line 323
    const-string v5, "1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 324
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->countries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;

    .line 325
    .restart local v0    # "c":Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;
    iget-object v5, v0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 329
    .end local v0    # "c":Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;
    :cond_5
    const/4 v5, 0x1

    if-gt v1, v5, :cond_1

    if-eqz v1, :cond_1

    .line 331
    :cond_6
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->countries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;

    .line 332
    .restart local v0    # "c":Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;
    iget-object v5, v0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v4, v2

    .line 333
    goto :goto_1

    .line 335
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private findCountryByIso(Ljava/lang/String;)I
    .locals 4
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 303
    const/4 v1, 0x0

    .line 304
    .local v1, "i":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->countries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;

    .line 305
    .local v0, "c":Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;
    iget-object v3, v0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;->isoCode:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    .end local v0    # "c":Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 308
    .restart local v0    # "c":Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    .end local v0    # "c":Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private setCountry(I)V
    .locals 5
    .param p1, "pos"    # I

    .prologue
    const v4, 0x7f080180

    .line 341
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->dontUpdateField:Z

    if-eqz v1, :cond_0

    .line 342
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->dontUpdateField:Z

    .line 348
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->countries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;

    .line 346
    .local v0, "c":Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, v0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method


# virtual methods
.method public getNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v2, 0x7f080180

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v2, 0x7f080181

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFilled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 373
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v2, 0x7f080180

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v2, 0x7f080181

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super/range {p0 .. p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "countries_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Lcom/vkontakte/android/Global;->getDeviceLang()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".txt"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 72
    .local v6, "in":Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v15

    new-array v3, v15, [B

    .line 73
    .local v3, "file":[B
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    .line 74
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 75
    new-instance v15, Ljava/lang/String;

    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-direct {v15, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 76
    .local v10, "lines":[Ljava/lang/String;
    move-object v1, v10

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v9, v1, v5

    .line 77
    .local v9, "line":Ljava/lang/String;
    const-string v15, ","

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "info":[Ljava/lang/String;
    new-instance v2, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;

    const/4 v15, 0x0

    invoke-direct {v2, v15}, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;-><init>(Lcom/vkontakte/android/fragments/SignupPhoneFragment$1;)V

    .line 79
    .local v2, "c":Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;
    const/4 v15, 0x0

    aget-object v15, v7, v15

    iput-object v15, v2, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    .line 80
    const/4 v15, 0x2

    aget-object v15, v7, v15

    iput-object v15, v2, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;->isoCode:Ljava/lang/String;

    .line 81
    const/4 v15, 0x3

    aget-object v15, v7, v15

    iput-object v15, v2, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;->name:Ljava/lang/String;

    .line 82
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->countries:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "c":Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;
    .end local v3    # "file":[B
    .end local v5    # "i$":I
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v7    # "info":[Ljava/lang/String;
    .end local v8    # "len$":I
    .end local v9    # "line":Ljava/lang/String;
    .end local v10    # "lines":[Ljava/lang/String;
    :catch_0
    move-exception v14

    .local v14, "x":Ljava/lang/Exception;
    const-string v15, "vk"

    invoke-static {v15, v14}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .end local v14    # "x":Ljava/lang/Exception;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "phone"

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 87
    .local v12, "tm":Landroid/telephony/TelephonyManager;
    const-string v13, ""

    .line 88
    .local v13, "userCountry":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 89
    .local v11, "simCountry":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 90
    move-object v13, v11

    .line 94
    :goto_1
    const/4 v4, 0x0

    .line 95
    .local v4, "i":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->countries:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;

    .line 96
    .restart local v2    # "c":Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;
    iget-object v15, v2, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;->isoCode:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 97
    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->selectedCountry:I

    .line 99
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 92
    .end local v2    # "c":Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 101
    .restart local v4    # "i":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f08017a

    const/4 v7, 0x1

    const v6, 0x7f080181

    const v5, 0x7f0800c9

    const/4 v2, 0x0

    .line 104
    const v1, 0x7f030079

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    .line 106
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v3, 0x7f08017d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 107
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v3, 0x7f08017e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 108
    .local v0, "spinner":Landroid/widget/Spinner;
    new-instance v1, Lcom/vkontakte/android/fragments/SignupPhoneFragment$CountriesAdapter;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/vkontakte/android/fragments/SignupPhoneFragment$CountriesAdapter;-><init>(Lcom/vkontakte/android/fragments/SignupPhoneFragment;Lcom/vkontakte/android/fragments/SignupPhoneFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 109
    new-instance v1, Lcom/vkontakte/android/fragments/SignupPhoneFragment$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SignupPhoneFragment$1;-><init>(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 123
    iget v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->selectedCountry:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 124
    iget v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->selectedCountry:I

    invoke-direct {p0, v1}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->setCountry(I)V

    .line 126
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v3, 0x7f080180

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    new-array v3, v7, [Landroid/text/InputFilter;

    new-instance v4, Lcom/vkontakte/android/fragments/SignupPhoneFragment$2;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/SignupPhoneFragment$2;-><init>(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)V

    aput-object v4, v3, v2

    invoke-interface {v1, v3}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 133
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    new-array v3, v7, [Landroid/text/InputFilter;

    new-instance v4, Lcom/vkontakte/android/fragments/SignupPhoneFragment$3;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/SignupPhoneFragment$3;-><init>(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)V

    aput-object v4, v3, v2

    invoke-interface {v1, v3}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 138
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v3, 0x7f080180

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v3, Lcom/vkontakte/android/fragments/SignupPhoneFragment$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SignupPhoneFragment$4;-><init>(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 195
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v3, Lcom/vkontakte/android/fragments/SignupPhoneFragment$5;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SignupPhoneFragment$5;-><init>(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 239
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v3, Lcom/vkontakte/android/fragments/SignupPhoneFragment$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SignupPhoneFragment$6;-><init>(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 251
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    new-instance v3, Lcom/vkontakte/android/fragments/SignupPhoneFragment$7;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SignupPhoneFragment$7;-><init>(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 259
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/vkontakte/android/fragments/SignupPhoneFragment$8;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SignupPhoneFragment$8;-><init>(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 269
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->explainText:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v3, 0x7f08017d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->explainText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->btnText:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->btnText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->showForgot:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    return-object v1

    .line 273
    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->btnText:Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v1, 0x7f08017a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :cond_0
    return-void
.end method

.method public setExplainText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->explainText:Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v1, 0x7f08017d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    :cond_0
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 8
    .param p1, "_num"    # Ljava/lang/String;

    .prologue
    .line 279
    const-string v4, ""

    .line 280
    .local v4, "num":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 281
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 282
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 280
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "c":C
    :cond_1
    const/4 v3, 0x0

    .line 287
    .local v3, "longestCode":Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->countries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;

    .line 288
    .local v0, "c":Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;
    iget-object v5, v0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 289
    if-eqz v3, :cond_3

    iget-object v5, v0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, v3, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 290
    :cond_3
    move-object v3, v0

    goto :goto_1

    .line 294
    .end local v0    # "c":Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;
    :cond_4
    if-nez v3, :cond_5

    .line 300
    :goto_2
    return-void

    .line 297
    :cond_5
    iget-object v5, v3, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 298
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v6, 0x7f080180

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/vkontakte/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v6, 0x7f080181

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public setOnNextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->btnClickListener:Landroid/view/View$OnClickListener;

    .line 65
    return-void
.end method

.method public setShowForgitButton(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 363
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->showForgot:Z

    .line 364
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v1, 0x7f0800c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 366
    :cond_0
    return-void

    .line 365
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
